
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
        
        load "data/6N9P.pdb", protein
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
 
        load "data/6N9P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [574,1180,1275,1202,1203,1276,1292,1282,1277,494,1294,1305,1306,759,760,575,573,715,716,720,700,701,437,439,327,697,326,325,741,742,749,738,1166,178,763,771,344,1186,1283,183,184,186,201,195,221,222,223,340,342,343,199,177,182,336,175,166,167,169,170,172,173] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1186,1283,186,201,203,190,191,1384,1308,204,1341,1342,1280,1281,1279,1306,1307,1170,1171,1450,1383,1385,1386,1427,1141,1142,1143,1144,1381,1379,1380,1382,1311,1168,1169] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1943,1945,1773,1807,1808,1928,1935,1938,1934,1941,1944,1959,1919,1881,1880,1783,1784,1786,1740,1741,1766,1767,1768,1778,1787,1681,1682,1721,1684] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [611,270,301,302,304,305,306,321,613,609,610,69,67,265,268,264,266,267,269,311,300] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [809,873,1229,1230,1236,1237,1239,907,974,976,943,939,940,938,964,965] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        