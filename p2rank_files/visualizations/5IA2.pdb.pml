
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
        
        load "data/5IA2.pdb", protein
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
 
        load "data/5IA2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1137,1167,1168,1239,1240,227,745,746,747,329,719,742,738,767,175,740,1151,1246,1247,1248,1138,1139,1140,1286,1285,1241,1242,481,482,483,1284,508,720,589,1292,1315,1316,1321,1322,1325,1326,1328,1317,1318,1282,171,177,768,172,174,753,775,771,1335,344,350,332,342,343,338,704,345,346,360,458,1320,202,453,456,420,452,421,422,425,1311,1319,418,448,451,200,182,183,185,186,209,211,212,228,189,198,205,207] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1201,905,928,929,930,976,977,1207,1211,1212,966,970,565,567,574,575,927,962,964,2268,968] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1554,1558,1548,1549,1550,1551,1553,1555,1556,1557,1561,2119,1015,2174,2167,2171,1049,1050,1051,1042,1043,2159,2164,2165,2166,2162,2178] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [728,1227,600,1180,733,758,1197,1181,1183,564,566] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        