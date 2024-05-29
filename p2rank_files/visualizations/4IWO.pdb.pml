
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/4IWO.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/4IWO.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [1263,1265,1270,1280,309,1283,1286,448,487,449,452,462,1281,375,425,1307,1310,163,1317,1319,162,164,373,1253,1257,1259,1260,1267,1277,1273,1275,485,488,713,714,308,697,325,327,578,581,324,331,348,349,351,344,345,561,484] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2389,889,2826,2392,1958,2827,3256,3255,2959,3254,2960,1944,1945,1946,1951,1952,1940,1927,2973,2964,2970,3238,3225,3226,1947,1967,2952,2961,1963,2371,2372,2374,2373,3289,2366,2368,2377,2376,2823,3280] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [137,138,140,142,143,149,168,184,714,307,308,130,131,132,135,136,134,292,182,183,711,738,755,735,1147,1148,1149,740,563,718,732,1125,1127,1130,1258,1256,1257,150,1263,1264,1266,1265,309] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [778,1539,1540,1339,1113,1114,780,1575,1573,1346,1347,1348,1357,1574,1563] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1807,1808,1809,1798,1529,1797,1923,1918,1921,1922,1557,1566,1567,1602,1936,2988] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [286,287,586,588,590,614,705,66,229,231,585,597] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1561,801,813,3151,3152,1539,1540,780,1563,1567] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3242,4119,4068,4122,3269,3272] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        