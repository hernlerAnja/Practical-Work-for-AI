
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
        
        load "data/4ANB.pdb", protein
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
 
        load "data/4ANB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [715,138,132,706,707,131,739,1064,1073,1090,1065,1066,665,1089,176,177,666,134,275,135,1166,689,686,145,146,139,1174,295,1173,293,178] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [152,1253,1254,1256,1298,1282,1251,1252,1281,1283,1257,1258,1261,1034,1035,1036,1037,1053,1174,1306,1021,1022,155,153,1023,1026,1027,1375,1425,1168,1169,1170,1178,1186,1196,1187,1171,294,295,1172,1173,447,311,652,470,1197,1200,1201,1224,1225,1229,1230,1255,1220,1221,1223,1304,1301,1344,1293,1342] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [294,651,1173,447,652,470,649,1168,1169,1170,1175,1178,1196,471,1223,1197,1201,1162,1167,1183,1185,1165,542,543,665,663,553,541] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1334,1582,1583,1307,1323,1324,730,763,1581,1540,1541,1049,1051,728,729,731,1059,1060,1061,1052] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        